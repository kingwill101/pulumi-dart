// ignore_for_file: unused_element, unnecessary_cast


/// Android app information.
class AndroidAppInfo {
  /// The name of the app. Optional
  final String? name;
  /// The package name of the app. Required.
  final String? packageName;
  /// The internal version code of the app. Optional.
  final String? versionCode;
  /// The version name of the app. Optional.
  final String? versionName;

  /// Creates a new [AndroidAppInfo].
  /// [name] The name of the app. Optional
  /// [packageName] The package name of the app. Required.
  /// [versionCode] The internal version code of the app. Optional.
  /// [versionName] The version name of the app. Optional.
  AndroidAppInfo({
    this.name,
    this.packageName,
    this.versionCode,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'packageName': ?packageName,
      'versionCode': ?versionCode,
      'versionName': ?versionName,
    };
  }

  factory AndroidAppInfo.fromMap(Map<String, dynamic> map) {
    return AndroidAppInfo(
      name: map['name'] == null ? null : map['name'] as String,
      packageName: map['packageName'] == null ? null : map['packageName'] as String,
      versionCode: map['versionCode'] == null ? null : map['versionCode'] as String,
      versionName: map['versionName'] == null ? null : map['versionName'] as String,
    );
  }
}

