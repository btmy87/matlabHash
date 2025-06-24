# matlabHash

[![Unit_Tests](https://github.com/btmy87/matlabHash/actions/workflows/testing.yml/badge.svg)](https://github.com/btmy87/matlabHash/actions/workflows/testing.yml)

Generate file hash values within MATLAB using the .NET Cryptography namespace

`out = hashFile(filename)` Generates a SHA256 hash of the given file.

`out = hashFile(filename, hashAlgorithm="SHA1") Generates the SHA1 hash of the given file.

Any hashAlgorithm from the .NET System.Security.Cryptography namespace can be used.
https://learn.microsoft.com/en-us/dotnet/api/system.security.cryptography.hashalgorithm

