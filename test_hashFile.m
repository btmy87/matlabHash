% test_hashFile
% unit tests for hashFile
% runtests('test_hashFile')
dotnetenv

%% Test 1: Default, SHA256
expectedValue = "436a6d536138f203ac333858cff92a568be62797752b3adb94bcaa0f6ffe7ef6";
out = hashFile("LICENSE");
assert(lower(out) == lower(expectedValue));

%% Test 2: SHA1
expectedValue = "e94b688646f4129635b82668543ef594c079e972";
out = hashFile("LICENSE", hashAlgorithm="SHA1");
assert(lower(out) == lower(expectedValue));

%% Test 3: MD5
expectedValue = "d512eeaf0d5285acc53d4569054cbb08";
out = hashFile("LICENSE", hashAlgorithm="MD5");
assert(lower(out) == lower(expectedValue));

%% Test 4: SHA384
expectedValue = "b46c585bf6dd9e22504355ed6f4455322a41b3e01da8eb21f7295fc0404d3e41bdb89828bf2db724473c83679456dc3a";
out = hashFile("LICENSE", hashAlgorithm="SHA384");
assert(lower(out) == lower(expectedValue));

%% Test 5: SHA512
expectedValue = "7d2c41db2fc891a5327798a1eb048093e25356ada8b7074308df69d85a51d2fb057b2998e38aba6277e983de486790f60d3b8b7cab70030ab2b779e19c7fcf46";
out = hashFile("LICENSE", hashAlgorithm="SHA512");
assert(lower(out) == lower(expectedValue));