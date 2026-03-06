// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HostingCustomDomainCertVerificationHttp {
  /// A text string to serve at the path.
  final pulumi.Input<String>? desired;
  /// Whether Hosting was able to find the required file contents on the
  /// specified path during its last check.
  final pulumi.Input<String>? discovered;
  /// (Output)
  /// The last time Hosting systems checked for the file contents.
  final pulumi.Input<String>? lastCheckTime;
  /// The path to the file.
  final pulumi.Input<String>? path;

  /// Creates a new [HostingCustomDomainCertVerificationHttp].
  /// [desired] A text string to serve at the path.
  /// [discovered] Whether Hosting was able to find the required file contents on the
  /// [lastCheckTime] (Output)
  /// [path] The path to the file.
  const HostingCustomDomainCertVerificationHttp({
    this.desired,
    this.discovered,
    this.lastCheckTime,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desired': ?desired,
      'discovered': ?discovered,
      'lastCheckTime': ?lastCheckTime,
      'path': ?path,
    };
  }

  factory HostingCustomDomainCertVerificationHttp.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainCertVerificationHttp(
      desired: (() { final guardedValue = map['desired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discovered: (() { final guardedValue = map['discovered']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastCheckTime: (() { final guardedValue = map['lastCheckTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

