// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic.dart';
import 'user_managed.dart';

/// A policy that defines the replication and encryption configuration of data.
class Replication {
  /// The Secret will automatically be replicated without any restrictions.
  final pulumi.Input<Automatic>? automatic;
  /// The Secret will only be replicated into the locations specified.
  final pulumi.Input<UserManaged>? userManaged;

  /// Creates a new [Replication].
  /// [automatic] The Secret will automatically be replicated without any restrictions.
  /// [userManaged] The Secret will only be replicated into the locations specified.
  Replication({
    this.automatic,
    this.userManaged,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': ?pulumi.Input.mapOptionalInputValue<Automatic, Map<String, dynamic>>(automatic, (value) => value.toMap()),
      'userManaged': ?pulumi.Input.mapOptionalInputValue<UserManaged, Map<String, dynamic>>(userManaged, (value) => value.toMap()),
    };
  }

  factory Replication.fromMap(Map<String, dynamic> map) {
    return Replication(
      automatic: map['automatic'] == null ? null : (Automatic.fromMap((map['automatic']! as Map).cast<String, dynamic>())).input(),
      userManaged: map['userManaged'] == null ? null : (UserManaged.fromMap((map['userManaged']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

