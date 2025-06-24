function out= hashFile(filename, opts)
%HASHFILE generates hash of file
% Generates hash of the given file, default is SHA256.  Any hash algorithm 
% in the .NET System.Security.Cryptography namespace is valid.  Common
% options include SHA1, SHA256, SHA384, SHA512, MD1
%
% out = hashFile(filename) generates the SHA256 hash of the given file
%
% out = hashFile(filename, hashAlgorithm="SHA1") generates the SHA1 hash of
% the given file
%
% see test_hashFile for concrete usage examples

arguments (Input)
    filename (1, 1) string
    opts.hashAlgorithm = "SHA256";
end

persistent setup_once;
if isempty(setup_once)
    setup_once = true;
    NET.addAssembly("System.Security.Cryptography");
end

assert(exist(filename, "file") > 0, "file does not exist" + filename)

fid = fopen(filename, "rb");
data = fread(fid, "uint8=>uint8");
hash = System.Security.Cryptography.(opts.hashAlgorithm).Create();
outbytes = hash.ComputeHash(data);
out = strjoin(string(dec2hex(uint8(outbytes))), "");

end