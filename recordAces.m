function [ nname ] = recordAces(m, d, tname)

%% function [ nname ] = recordAces(m, d, tname)
%
% Records to aces file.
%
% Send: 
% 	m 	= 	structure of motor names
% 	d	= 	matrix of size [MxN] where 
%			N = number of motor names
%			M = number of time steps recorded
%
% Return:
%	nname 	=	the name of the file that has been recorded

	nname = [tname,'.aces'];
	fid = fopen(nname,'w');

for( i = 1:length(m) )
	fprintf(fid,[m{i},' ']);
end
	fprintf(fid,'\n');

s = size(d)
for( i = 1:s(1) )

	for( j = 1:s(2) )
	fprintf(fid,[num2str(d(i,j)),' ']);
	end
	fpritnf(fid,'\n');
end

fclose(fid);

end
