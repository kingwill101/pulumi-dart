// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAnonymousAuthenticationConfig {
  /// Sets or removes authentication restrictions. Available options include `LIMITED` and `ENABLED`.
  final pulumi.Input<String> mode;

  /// Creates a new [ClusterAnonymousAuthenticationConfig].
  /// [mode] Sets or removes authentication restrictions. Available options include `LIMITED` and `ENABLED`.
  const ClusterAnonymousAuthenticationConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory ClusterAnonymousAuthenticationConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAnonymousAuthenticationConfig(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

