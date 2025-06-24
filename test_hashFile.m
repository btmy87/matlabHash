% test_hashFile
% unit tests for hashFile
% runtests('test_hashFile')

try %#ok<TRYNC>
dotnetenv("core");
end

%% Test 1: Default, SHA256
expectedValue = "6b0382b16279f26ff69014300541967a356a666eb0b91b422f6862f6b7dad17e";
out = hashFile("LICENSE");
assert(lower(out) == lower(expectedValue), "%s does not equal %s", lower(out), lower(expectedValue));

%% Test 2: SHA1
expectedValue = "6d842099530d126dea37db858a755e444f4de3f7";
out = hashFile("LICENSE", hashAlgorithm="SHA1");
assert(lower(out) == lower(expectedValue), "%s does not equal %s", lower(out), lower(expectedValue));

%% Test 3: MD5
expectedValue = "d88e9e08385d2a17052dac348bde4bc1";
out = hashFile("LICENSE", hashAlgorithm="MD5");
assert(lower(out) == lower(expectedValue), "%s does not equal %s", lower(out), lower(expectedValue));

%% Test 4: SHA384
expectedValue = "f0ebf99d7a986f804027bc72c5421f33f1ea1b772d0ce34aa5301d809da2b17562e836945157d8d1af82bab56e991e51";
out = hashFile("LICENSE", hashAlgorithm="SHA384");
assert(lower(out) == lower(expectedValue), "%s does not equal %s", lower(out), lower(expectedValue));

%% Test 5: SHA512
expectedValue = "f23a3f3ec79340594ea40d731087e8586326a96c6cb9675c7a58687255885148286aa73cee087a5a3c976ea901fde16e229d00e98c65188cce3f0d75c8390a10";
out = hashFile("LICENSE", hashAlgorithm="SHA512");
assert(lower(out) == lower(expectedValue), "%s does not equal %s", lower(out), lower(expectedValue));