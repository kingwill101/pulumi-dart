// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// The time when the subnet was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String?>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final pulumi.Input<String?>? location;
  /// IP (L3) MTU value of the network. Default value is `1500`. Possible values are: `1500`, `9000`.
  final pulumi.Input<int?>? mtu;
  /// The canonical name of this resource, with format
  /// `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  final pulumi.Input<String?>? name;
  /// A unique ID that identifies this network.
  final pulumi.Input<String?>? networkId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The time when the subnet was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  final pulumi.Input<String?>? updateTime;
  /// The name of the target Distributed Cloud Edge zone.
  final pulumi.Input<String?>? zone;

  /// Creates a new [NetworkState].
  /// [createTime] The time when the subnet was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels associated with this resource.
  /// [location] The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  /// [mtu] IP (L3) MTU value of the network. Default value is `1500`. Possible values are: `1500`, `9000`.
  /// [name] The canonical name of this resource, with format
  /// [networkId] A unique ID that identifies this network.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The time when the subnet was last updated.
  /// [zone] The name of the target Distributed Cloud Edge zone.
  const NetworkState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.mtu,
    this.name,
    this.networkId,
    this.project,
    this.pulumiLabels,
    this.updateTime,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'mtu': ?mtu,
      'name': ?name,
      'networkId': ?networkId,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
      'zone': ?zone,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
