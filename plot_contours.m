function [] = plot_contours(edges, varargin)

if nargin == 2, lw = varargin{1}; 
else            lw = 1; 
end

sty = contours_style(lw);
%c   = size(edges,4);

edge_hor  = edges(:,:,1,:) > 0.5; th = size(edge_hor,2);
edge_vert = edges(:,:,2,:) > 0.5; tv = size(edge_vert,2);
         
[Iv,Jv] = find(edge_vert == 1);
while max(Jv(:)) > tv, Jv(Jv>tv) = Jv(Jv>tv) - tv; end
Xv = [Jv'-1; Jv'; nan(1,length(Jv))]+.5;
Yv = [Iv'  ; Iv'; nan(1,length(Iv))]+.5;

[Ih,Jh] = find(edge_hor == 1);
while max(Jh(:)) > th, Jh(Jh>th) = Jh(Jh>th) - th; end
Xh = [Jh'  ; Jh'; nan(1,length(Jh))]+.5;
Yh = [Ih'-1; Ih'; nan(1,length(Ih))]+.5;

plot(Xv(:),Yv(:),sty{1}{:}); hold on
plot(Xh(:),Yh(:),sty{1}{:}); hold off

grid off
box on
axis ij
axis image
axis([0, size(edge_vert,2), 0, size(edge_hor,1)]+0.5);
set(gca,'xtick',[],'ytick',[]);

end

function cs = contours_style(lw)

col  = colors();
fcol = fieldnames(col);

cs = cell(1,numel(fcol));
for i = 1:numel(fcol)
  cs{i} = {'LineStyle','-','LineWidth',lw,'Color',col.(fcol{i})};
end

end

function col = colors()

fields = {'red','green','blue','yellow','cyan','magenta','black'};
values = {[.75 0 0] [.47 .67 .19] [0 .45 .74] ...
          [.93 .69 .13] [.3 .75 .93] [.75 0 .75] [0 0 0]};
col    = cell2struct(values,fields,2);

end
