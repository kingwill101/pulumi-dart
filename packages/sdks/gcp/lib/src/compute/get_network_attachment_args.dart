// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_network_attachment_get_network_attachment_args_doc}
/// Arguments for getNetworkAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_get_network_attachment_get_network_attachment_args_doc}
class GetNetworkAttachmentArgs {
  /// The name of the network attachment to retrieve.
  /// The name must be unique within the region.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region in which the network attachment resides.
  /// For example, `europe-west1`.
  final pulumi.Input<String> region;

  /// Creates a new [GetNetworkAttachmentArgs].
  /// [name] The name of the network attachment to retrieve.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region in which the network attachment resides.
  GetNetworkAttachmentArgs({
    required this.name,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': region,
    };
  }

  factory GetNetworkAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentArgs(
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

