// ignore_for_file: unused_element, unnecessary_cast

import 'automatic_response.dart';
import 'user_managed_response.dart';

/// A policy that defines the replication and encryption configuration of data.
class ReplicationResponse {
  /// The Secret will automatically be replicated without any restrictions.
  final AutomaticResponse automatic;
  /// The Secret will only be replicated into the locations specified.
  final UserManagedResponse userManaged;

  /// Creates a new [ReplicationResponse].
  /// [automatic] The Secret will automatically be replicated without any restrictions.
  /// [userManaged] The Secret will only be replicated into the locations specified.
  ReplicationResponse({
    required this.automatic,
    required this.userManaged,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': automatic.toMap(),
      'userManaged': userManaged.toMap(),
    };
  }

  factory ReplicationResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationResponse(
      automatic: AutomaticResponse.fromMap((map['automatic'] as Map).cast<String, dynamic>()),
      userManaged: UserManagedResponse.fromMap((map['userManaged'] as Map).cast<String, dynamic>()),
    );
  }
}

