// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkMonitoringProvider resources.
class NetworkMonitoringProviderState {
  /// The time the Network Monitoring Provider was created.
  final pulumi.Input<String?>? createTime;
  /// The deletion policy for the Network Monitoring Provider.
  /// Setting `deletionPolicy = "FORCE"` forces the deletion of all nested resources
  /// (MonitoringPoints, NetworkPaths, WebPaths) belonging to this provider on deletion.
  final pulumi.Input<String?>? deletionPolicy;
  /// The list of error messages detected for the Network Monitoring Provider.
  final pulumi.Input<List<String>?>? errors;
  /// The location of the Network Monitoring Provider. Currently only `global` is supported.
  final pulumi.Input<String?>? location;
  /// The full resource name of the Network Monitoring Provider, in the format
  /// `projects/{project}/locations/{location}/networkMonitoringProviders/{id}`.
  final pulumi.Input<String?>? name;
  /// The ID to use for the Network Monitoring Provider. This will become the last
  /// component of the provider's resource name.
  final pulumi.Input<String?>? networkMonitoringProviderId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The type of the Network Monitoring Provider.
  /// Currently only `EXTERNAL` is supported.
  final pulumi.Input<String?>? providerType;
  /// Link to the provider's UI.
  final pulumi.Input<String?>? providerUri;
  /// The current state of the Network Monitoring Provider.
  final pulumi.Input<String?>? state;
  /// The time the Network Monitoring Provider was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [NetworkMonitoringProviderState].
  /// [createTime] The time the Network Monitoring Provider was created.
  /// [deletionPolicy] The deletion policy for the Network Monitoring Provider.
  /// [errors] The list of error messages detected for the Network Monitoring Provider.
  /// [location] The location of the Network Monitoring Provider. Currently only `global` is supported.
  /// [name] The full resource name of the Network Monitoring Provider, in the format
  /// [networkMonitoringProviderId] The ID to use for the Network Monitoring Provider. This will become the last
  /// [project] The ID of the project in which the resource belongs.
  /// [providerType] The type of the Network Monitoring Provider.
  /// [providerUri] Link to the provider's UI.
  /// [state] The current state of the Network Monitoring Provider.
  /// [updateTime] The time the Network Monitoring Provider was last updated.
  const NetworkMonitoringProviderState({
    this.createTime,
    this.deletionPolicy,
    this.errors,
    this.location,
    this.name,
    this.networkMonitoringProviderId,
    this.project,
    this.providerType,
    this.providerUri,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'errors': ?errors,
      'location': ?location,
      'name': ?name,
      'networkMonitoringProviderId': ?networkMonitoringProviderId,
      'project': ?project,
      'providerType': ?providerType,
      'providerUri': ?providerUri,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory NetworkMonitoringProviderState.fromMap(Map<String, dynamic> map) {
    return NetworkMonitoringProviderState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkMonitoringProviderId: (() { final guardedValue = map['networkMonitoringProviderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerType: (() { final guardedValue = map['providerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerUri: (() { final guardedValue = map['providerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
