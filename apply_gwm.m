function out = apply_gwm(in)
out = in;
out(ismember(in,[1 2])) = 3;
end