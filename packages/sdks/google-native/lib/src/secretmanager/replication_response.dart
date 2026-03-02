// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_response.dart';
import 'user_managed_response.dart';

/// A policy that defines the replication and encryption configuration of data.
class ReplicationResponse {
  /// The Secret will automatically be replicated without any restrictions.
  final pulumi.Input<AutomaticResponse> automatic;
  /// The Secret will only be replicated into the locations specified.
  final pulumi.Input<UserManagedResponse> userManaged;

  /// Creates a new [ReplicationResponse].
  /// [automatic] The Secret will automatically be replicated without any restrictions.
  /// [userManaged] The Secret will only be replicated into the locations specified.
  ReplicationResponse({
    required this.automatic,
    required this.userManaged,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': pulumi.Input.mapInputValue<AutomaticResponse, Map<String, dynamic>>(automatic, (value) => value.toMap()),
      'userManaged': pulumi.Input.mapInputValue<UserManagedResponse, Map<String, dynamic>>(userManaged, (value) => value.toMap()),
    };
  }

  factory ReplicationResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationResponse(
      automatic: (AutomaticResponse.fromMap((map['automatic'] as Map).cast<String, dynamic>())).input(),
      userManaged: (UserManagedResponse.fromMap((map['userManaged'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

