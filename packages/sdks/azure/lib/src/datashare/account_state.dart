// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_identity.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// An `identity` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<AccountIdentity?>? identity;
  /// The Azure Region where the Data Share Account should exist. Changing this forces a new Data Share Account to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Data Share Account. Changing this forces a new Data Share Account to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the Data Share Account should exist. Changing this forces a new Data Share Account to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Data Share Account.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AccountState].
  /// [identity] An `identity` block as defined below. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Data Share Account should exist. Changing this forces a new Data Share Account to be created.
  /// [name] The name which should be used for this Data Share Account. Changing this forces a new Data Share Account to be created.
  /// [resourceGroupName] The name of the Resource Group where the Data Share Account should exist. Changing this forces a new Data Share Account to be created.
  /// [tags] A mapping of tags which should be assigned to the Data Share Account.
  const AccountState({
    this.identity,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<AccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
