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
  ApplicationKnownClientsState({
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
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      knownClientIds: map['knownClientIds'] == null ? null : ((map['knownClientIds'] as List).cast<String>()).input(),
    );
  }
}

