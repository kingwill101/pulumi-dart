// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DropletAutoscaleDropletTemplate {
  /// Image slug of the Droplet Autoscale pool underlying resource(s).
  final pulumi.Input<String> image;
  /// Boolean flag to enable IPv6 networking on the Droplet Autoscale pool underlying resource(s).
  final pulumi.Input<bool>? ipv6;
  /// Project UUID to create the Droplet Autoscale pool underlying resource(s).
  final pulumi.Input<String>? projectId;
  /// A boolean indicating whether to enables public networking for the Droplet or not. By default, this is always enabled on new droplets. But, by explicitly setting it to false, you can create a droplet with public networking entirely disabled.
  final pulumi.Input<bool>? publicNetworking;
  /// Region slug of the Droplet Autoscale pool underlying resource(s).
  final pulumi.Input<String> region;
  /// Size slug of the Droplet Autoscale pool underlying resource(s).
  final pulumi.Input<String> size;
  /// SSH fingerprints to add to the Droplet Autoscale pool underlying resource(s).
  final pulumi.Input<List<String>> sshKeys;
  /// List of tags to add to the Droplet Autoscale pool underlying resource(s).
  final pulumi.Input<List<String>>? tags;
  /// Custom user data that can be added to the Droplet Autoscale pool underlying resource(s). This can be a
  /// cloud init script that user may configure to setup their application workload.
  final pulumi.Input<String>? userData;
  /// VPC UUID to create the Droplet Autoscale pool underlying resource(s). If not provided, this is inferred
  /// from the specified `region` (default VPC).
  final pulumi.Input<String>? vpcUuid;
  /// Boolean flag to enable metric agent on the Droplet Autoscale pool underlying resource(s). The
  /// metric agent enables collecting resource utilization metrics, which allows making resource based scaling decisions.
  final pulumi.Input<bool>? withDropletAgent;

  /// Creates a new [DropletAutoscaleDropletTemplate].
  /// [image] Image slug of the Droplet Autoscale pool underlying resource(s).
  /// [ipv6] Boolean flag to enable IPv6 networking on the Droplet Autoscale pool underlying resource(s).
  /// [projectId] Project UUID to create the Droplet Autoscale pool underlying resource(s).
  /// [publicNetworking] A boolean indicating whether to enables public networking for the Droplet or not. By default, this is always enabled on new droplets. But, by explicitly setting it to false, you can create a droplet with public networking entirely disabled.
  /// [region] Region slug of the Droplet Autoscale pool underlying resource(s).
  /// [size] Size slug of the Droplet Autoscale pool underlying resource(s).
  /// [sshKeys] SSH fingerprints to add to the Droplet Autoscale pool underlying resource(s).
  /// [tags] List of tags to add to the Droplet Autoscale pool underlying resource(s).
  /// [userData] Custom user data that can be added to the Droplet Autoscale pool underlying resource(s). This can be a
  /// [vpcUuid] VPC UUID to create the Droplet Autoscale pool underlying resource(s). If not provided, this is inferred
  /// [withDropletAgent] Boolean flag to enable metric agent on the Droplet Autoscale pool underlying resource(s). The
  const DropletAutoscaleDropletTemplate({
    required this.image,
    this.ipv6,
    this.projectId,
    this.publicNetworking,
    required this.region,
    required this.size,
    required this.sshKeys,
    this.tags,
    this.userData,
    this.vpcUuid,
    this.withDropletAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'ipv6': ?ipv6,
      'projectId': ?projectId,
      'publicNetworking': ?publicNetworking,
      'region': region,
      'size': size,
      'sshKeys': sshKeys,
      'tags': ?tags,
      'userData': ?userData,
      'vpcUuid': ?vpcUuid,
      'withDropletAgent': ?withDropletAgent,
    };
  }

  factory DropletAutoscaleDropletTemplate.fromMap(Map<String, dynamic> map) {
    return DropletAutoscaleDropletTemplate(
      image: pulumi.Input.fromValue(map['image'] as String),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworking: (() { final guardedValue = map['publicNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      size: pulumi.Input.fromValue(map['size'] as String),
      sshKeys: pulumi.Input.fromValue((map['sshKeys'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcUuid: (() { final guardedValue = map['vpcUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withDropletAgent: (() { final guardedValue = map['withDropletAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
