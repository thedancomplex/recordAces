function [ nname ] = recordAces(m, d, tname)

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
