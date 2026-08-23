// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovery_client_error.dart';

/// Input properties used for looking up and filtering DiscoveryClient resources.
class DiscoveryClientState {
  /// Time when the discovery client was first created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Free text description.
  /// Maximum length is 1000 characters.
  final pulumi.Input<String>? description;
  /// User specified ID for the discovery client. It will become the last
  /// component of the discovery client name. The ID must be unique within the
  /// project, is restricted to lower-cased letters and has a maximum length of
  /// 63 characters. The ID must match the regular expression:
  /// `a-z?`.
  final pulumi.Input<String>? discoveryClientId;
  /// Free text display name.
  /// Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Errors affecting client functionality.
  /// Structure is documented below.
  final pulumi.Input<List<DiscoveryClientError>>? errors;
  /// Client expiration time in UTC. If specified, the backend will not accept
  /// new frames after this time.
  final pulumi.Input<String>? expireTime;
  /// Last heartbeat time.
  /// Healthy clients are expected to send heartbeats regularly (normally every
  /// few minutes).
  final pulumi.Input<String>? heartbeatTime;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. Full name of this discovery client.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Service account used by the discovery client for various operation.
  final pulumi.Input<String>? serviceAccount;
  /// This field is intended for internal use.
  final pulumi.Input<String>? signalsEndpoint;
  /// Full name of the source object associated with this discovery client.
  final pulumi.Input<String>? source;
  /// Current state of the discovery client.
  /// Possible values:
  /// ACTIVE
  /// OFFLINE
  /// DEGRADED
  /// EXPIRED
  final pulumi.Input<String>? state;
  /// Input only. Client time-to-live. If specified, the backend will not accept new
  /// frames after this time.
  /// This field is input only. The derived expiration time is provided as
  /// output through the `expireTime` field.
  final pulumi.Input<String>? ttl;
  /// Time when the discovery client was last updated. This value is not updated
  /// by heartbeats, to view the last heartbeat time please refer to the
  /// `heartbeatTime` field.
  final pulumi.Input<String>? updateTime;
  /// Client version, as reported in recent heartbeat.
  final pulumi.Input<String>? version;

  /// Creates a new [DiscoveryClientState].
  /// [createTime] Time when the discovery client was first created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Free text description.
  /// [discoveryClientId] User specified ID for the discovery client. It will become the last
  /// [displayName] Free text display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [errors] Errors affecting client functionality.
  /// [expireTime] Client expiration time in UTC. If specified, the backend will not accept
  /// [heartbeatTime] Last heartbeat time.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. Full name of this discovery client.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serviceAccount] Service account used by the discovery client for various operation.
  /// [signalsEndpoint] This field is intended for internal use.
  /// [source] Full name of the source object associated with this discovery client.
  /// [state] Current state of the discovery client.
  /// [ttl] Input only. Client time-to-live. If specified, the backend will not accept new
  /// [updateTime] Time when the discovery client was last updated. This value is not updated
  /// [version] Client version, as reported in recent heartbeat.
  const DiscoveryClientState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.discoveryClientId,
    this.displayName,
    this.effectiveLabels,
    this.errors,
    this.expireTime,
    this.heartbeatTime,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.serviceAccount,
    this.signalsEndpoint,
    this.source,
    this.state,
    this.ttl,
    this.updateTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'discoveryClientId': ?discoveryClientId,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<DiscoveryClientError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<DiscoveryClientError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expireTime': ?expireTime,
      'heartbeatTime': ?heartbeatTime,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serviceAccount': ?serviceAccount,
      'signalsEndpoint': ?signalsEndpoint,
      'source': ?source,
      'state': ?state,
      'ttl': ?ttl,
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory DiscoveryClientState.fromMap(Map<String, dynamic> map) {
    return DiscoveryClientState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoveryClientId: (() { final guardedValue = map['discoveryClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiscoveryClientError>(guardedValue, (value) => DiscoveryClientError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      heartbeatTime: (() { final guardedValue = map['heartbeatTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signalsEndpoint: (() { final guardedValue = map['signalsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
