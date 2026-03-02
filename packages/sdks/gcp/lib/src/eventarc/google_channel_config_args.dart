// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_google_channel_config_google_channel_config_args_doc}
/// The set of arguments for GoogleChannelConfig.
/// {@endtemplate}
/// {@macro pulumi_eventarc_google_channel_config_google_channel_config_args_doc}
class GoogleChannelConfigArgs {
  /// Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// Required. The resource name of the config. Must be in the format of, `projects/{project}/locations/{location}/googleChannelConfig`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GoogleChannelConfigArgs].
  /// [cryptoKeyName] Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  /// [location] The location for the resource
  /// [name] Required. The resource name of the config. Must be in the format of, `projects/{project}/locations/{location}/googleChannelConfig`.
  /// [project] The ID of the project in which the resource belongs.
  GoogleChannelConfigArgs({
    this.cryptoKeyName,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyName': ?cryptoKeyName,
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory GoogleChannelConfigArgs.fromMap(Map<String, dynamic> map) {
    return GoogleChannelConfigArgs(
      cryptoKeyName: map['cryptoKeyName'] == null ? null : (map['cryptoKeyName']! as String).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

