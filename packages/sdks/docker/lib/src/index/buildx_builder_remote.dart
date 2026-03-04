// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BuildxBuilderRemote {
  /// Absolute path to the TLS certificate authority used for validation.
  final pulumi.Input<String>? cacert;

  /// Absolute path to the TLS client certificate to present to buildkitd.
  final pulumi.Input<String>? cert;

  /// Automatically load images to the Docker Engine image store. Defaults to `false`
  final pulumi.Input<bool>? defaultLoad;

  /// Sets the TLS client key.
  final pulumi.Input<String>? key;

  /// TLS server name used in requests.
  final pulumi.Input<String>? servername;

  /// Creates a new [BuildxBuilderRemote].
  /// [cacert] Absolute path to the TLS certificate authority used for validation.
  /// [cert] Absolute path to the TLS client certificate to present to buildkitd.
  /// [defaultLoad] Automatically load images to the Docker Engine image store. Defaults to `false`
  /// [key] Sets the TLS client key.
  /// [servername] TLS server name used in requests.
  BuildxBuilderRemote({
    this.cacert,
    this.cert,
    this.defaultLoad,
    this.key,
    this.servername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacert': ?cacert,
      'cert': ?cert,
      'defaultLoad': ?defaultLoad,
      'key': ?key,
      'servername': ?servername,
    };
  }

  factory BuildxBuilderRemote.fromMap(Map<String, dynamic> map) {
    return BuildxBuilderRemote(
      cacert: (() {
        final guardedValue = map['cacert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cert: (() {
        final guardedValue = map['cert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultLoad: (() {
        final guardedValue = map['defaultLoad'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      servername: (() {
        final guardedValue = map['servername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
