// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_identity.dart';

/// {@template pulumi_netapp_get_account_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_account_get_account_args_doc}
class GetAccountArgs {
  final pulumi.Input<GetAccountIdentity>? identity;
  /// The name of the NetApp Account.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the NetApp Account exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccountArgs].
  /// [identity] Optional.
  /// [name] The name of the NetApp Account.
  /// [resourceGroupName] The Name of the Resource Group where the NetApp Account exists.
  GetAccountArgs({
    pulumi.Output<GetAccountIdentity>? identity,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      identity = pulumi.Input.asOptionalInput<GetAccountIdentity>(identity),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<GetAccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<GetAccountIdentity>(GetAccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

