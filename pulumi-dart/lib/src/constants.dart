class Constants {
  static const String unknownValue = '04da6b54-80e4-46f7-96ec-b56ff0331ba9';
  static const String unknownBoolValue = '1c4a061d-8072-4f0a-a4cb-0ff528b18fe7';
  static const String unknownNumberValue =
      '3eeb2bf0-c639-47a8-9e75-3b44932eb421';
  static const String unknownArrayValue =
      '6a19a0b0-7e62-4c92-b797-7f8e31da9cc2';
  static const String unknownAssetValue =
      '030794c1-ac77-496b-92df-f27374a8bd58';
  static const String unknownArchiveValue =
      'e48ece36-62e2-4504-bad9-02848725956a';
  static const String unknownObjectValue =
      'dd056dcd-154b-4c76-9bd3-c8f88648b5ff';
  static const String specialSigKey = '4dabf18193072939515e22adb298388d';
  static const String specialAssetSig = 'c44067f5952c0a294b673a41bacd8c17';
  static const String specialArchiveSig = '0def7320c3a5731c473e5ecbe6d01bc7';
  static const String specialSecretSig = '1b47061264138c4ac30d75fd1eb44270';
  static const String specialResourceSig = '5cf8f73096256a8f31e491e813e4eb8e';
  static const String specialOutputValueSig = 'd0e6a833031e9bbcd3f4e8bde6ca49a4';

  static const String secretName = 'secret';
  static const String valueName = 'value';
  static const String dependenciesName = 'dependencies';

  static const String assetTextName = 'text';
  static const String archiveAssetsName = 'assets';

  static const String assetOrArchivePathName = 'path';
  static const String assetOrArchiveUriName = 'uri';

  static const String resourceUrnName = 'urn';
  static const String resourceIdName = 'id';
  static const String resourceVersionName = 'packageVersion';

  static const String idPropertyName = 'id';
  static const String urnPropertyName = 'urn';

  static const Set<String> unknownSentinelValues = {
    unknownValue,
    unknownBoolValue,
    unknownNumberValue,
    unknownArrayValue,
    unknownAssetValue,
    unknownArchiveValue,
    unknownObjectValue,
  };

  static bool isUnknownSentinel(String value) =>
      unknownSentinelValues.contains(value);
}
