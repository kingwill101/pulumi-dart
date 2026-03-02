// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_registry_image_get_registry_image_args_doc}
/// Arguments for getRegistryImage.
/// {@endtemplate}
/// {@macro pulumi_index_get_registry_image_get_registry_image_args_doc}
class GetRegistryImageArgs {
  /// If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  final pulumi.Input<bool>? insecureSkipVerify;
  /// The name of the Docker image, including any tags. e.g. `alpine:latest`. You can also specify a digest, e.g. `nginx:1.28.0@sha256:eaa7e36decc3421fc04478c586dfea0d931cebe47d5bc0b15d758a32ba51126f`.
  final pulumi.Input<String> name;

  /// Creates a new [GetRegistryImageArgs].
  /// [insecureSkipVerify] If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  /// [name] The name of the Docker image, including any tags. e.g. `alpine:latest`. You can also specify a digest, e.g. `nginx:1.28.0@sha256:eaa7e36decc3421fc04478c586dfea0d931cebe47d5bc0b15d758a32ba51126f`.
  GetRegistryImageArgs({
    this.insecureSkipVerify,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insecureSkipVerify': ?insecureSkipVerify,
      'name': name,
    };
  }

  factory GetRegistryImageArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageArgs(
      insecureSkipVerify: map['insecureSkipVerify'] == null ? null : (map['insecureSkipVerify'] as bool).input(),
      name: (map['name'] as String).input(),
    );
  }
}

