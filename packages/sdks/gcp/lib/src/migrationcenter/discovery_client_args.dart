// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_discovery_client_discovery_client_args_doc}
/// The set of arguments for DiscoveryClient.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_discovery_client_discovery_client_args_doc}
class DiscoveryClientArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Free text description.
  /// Maximum length is 1000 characters.
  final pulumi.Input<String?>? description;
  /// User specified ID for the discovery client. It will become the last
  /// component of the discovery client name. The ID must be unique within the
  /// project, is restricted to lower-cased letters and has a maximum length of
  /// 63 characters. The ID must match the regular expression:
  /// `a-z?`.
  final pulumi.Input<String> discoveryClientId;
  /// Free text display name.
  /// Maximum length is 63 characters.
  final pulumi.Input<String?>? displayName;
  /// Client expiration time in UTC. If specified, the backend will not accept
  /// new frames after this time.
  final pulumi.Input<String?>? expireTime;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Service account used by the discovery client for various operation.
  final pulumi.Input<String> serviceAccount;
  /// Full name of the source object associated with this discovery client.
  final pulumi.Input<String> source;
  /// Input only. Client time-to-live. If specified, the backend will not accept new
  /// frames after this time.
  /// This field is input only. The derived expiration time is provided as
  /// output through the `expireTime` field.
  final pulumi.Input<String?>? ttl;

  /// Creates a new [DiscoveryClientArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Free text description.
  /// [discoveryClientId] User specified ID for the discovery client. It will become the last
  /// [displayName] Free text display name.
  /// [expireTime] Client expiration time in UTC. If specified, the backend will not accept
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceAccount] Service account used by the discovery client for various operation.
  /// [source] Full name of the source object associated with this discovery client.
  /// [ttl] Input only. Client time-to-live. If specified, the backend will not accept new
  const DiscoveryClientArgs({
    this.deletionPolicy,
    this.description,
    required this.discoveryClientId,
    this.displayName,
    this.expireTime,
    this.labels,
    required this.location,
    this.project,
    required this.serviceAccount,
    required this.source,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'discoveryClientId': discoveryClientId,
      'displayName': ?displayName,
      'expireTime': ?expireTime,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'serviceAccount': serviceAccount,
      'source': source,
      'ttl': ?ttl,
    };
  }

  factory DiscoveryClientArgs.fromMap(Map<String, dynamic> map) {
    return DiscoveryClientArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoveryClientId: pulumi.Input.fromValue(map['discoveryClientId'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
