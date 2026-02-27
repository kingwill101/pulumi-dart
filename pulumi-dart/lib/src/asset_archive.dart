abstract class AssetOrArchive {}

abstract class Asset implements AssetOrArchive {
  static Asset fromPath(String path) => FileAsset(path);
  static Asset fromString(String content) => StringAsset(content);
  static Asset fromBase64(String content) => Base64Asset(content);
}

class FileAsset extends Asset {
  final String path;
  FileAsset(this.path);
}

class StringAsset extends Asset {
  final String content;
  StringAsset(this.content);
}

class Base64Asset extends Asset {
  final String content;
  Base64Asset(this.content);
}

abstract class Archive implements AssetOrArchive {
  static Archive fromPath(String path) => FileArchive(path);
  static Archive fromAssets(Map<String, AssetOrArchive> assets) =>
      AssetArchive(assets);
}

class FileArchive extends Archive {
  final String path;
  FileArchive(this.path);
}

class AssetArchive extends Archive {
  final Map<String, AssetOrArchive> assets;
  AssetArchive(this.assets);
}

class RemoteAsset extends Asset {
  final String url;
  RemoteAsset(this.url);
}

class RemoteArchive extends Archive {
  final String url;
  RemoteArchive(this.url);
}
