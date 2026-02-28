/// Marker interface for Pulumi asset/archive values.
abstract class AssetOrArchive {}

/// {@template pulumi.asset.summary}
/// A single blob-like value passed to a resource.
/// {@endtemplate}
///
abstract class Asset implements AssetOrArchive {
  /// Creates a file-backed asset.
  static Asset fromPath(String path) => FileAsset(path);

  /// Creates an inline text asset.
  static Asset fromString(String content) => StringAsset(content);

  /// Creates an inline base64-encoded asset.
  static Asset fromBase64(String content) => Base64Asset(content);
}

/// Asset loaded from a local file path.
class FileAsset extends Asset {
  final String path;
  FileAsset(this.path);
}

/// Inline text asset.
class StringAsset extends Asset {
  final String content;
  StringAsset(this.content);
}

/// Inline base64-encoded asset content.
class Base64Asset extends Asset {
  final String content;
  Base64Asset(this.content);
}

/// A collection-like payload passed to a resource.
abstract class Archive implements AssetOrArchive {
  /// Creates a path-backed archive.
  static Archive fromPath(String path) => FileArchive(path);

  /// Creates an archive from named entries.
  static Archive fromAssets(Map<String, AssetOrArchive> assets) =>
      AssetArchive(assets);
}

/// Archive loaded from a local path (`.zip`, `.tar`, `.tar.gz`).
class FileArchive extends Archive {
  final String path;
  FileArchive(this.path);
}

/// Archive assembled from named assets/archives.
class AssetArchive extends Archive {
  final Map<String, AssetOrArchive> assets;
  AssetArchive(this.assets);
}

/// Asset fetched from a remote URL.
class RemoteAsset extends Asset {
  final String url;
  RemoteAsset(this.url);
}

/// Archive fetched from a remote URL.
class RemoteArchive extends Archive {
  final String url;
  RemoteArchive(this.url);
}
