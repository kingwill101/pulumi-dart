// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationKnownClients resources.
class ApplicationKnownClientsState {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// A set of client IDs for the known applications.
  final pulumi.Input<List<String>>? knownClientIds;

  /// Creates a new [ApplicationKnownClientsState].
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [knownClientIds] A set of client IDs for the known applications.
  const ApplicationKnownClientsState({
    this.applicationId,
    this.knownClientIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'knownClientIds': ?knownClientIds,
    };
  }

  factory ApplicationKnownClientsState.fromMap(Map<String, dynamic> map) {
    return ApplicationKnownClientsState(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      knownClientIds: (() { final guardedValue = map['knownClientIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

