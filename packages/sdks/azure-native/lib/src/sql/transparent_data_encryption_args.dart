// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transparent_data_encryption_state.dart';

/// {@template pulumi_sql_transparent_data_encryption_args_doc}
/// The set of arguments for TransparentDataEncryption.
/// {@endtemplate}
/// {@macro pulumi_sql_transparent_data_encryption_args_doc}
class TransparentDataEncryptionArgs {
  /// The name of the logical database for which the security alert policy is defined.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// Specifies the state of the transparent data encryption.
  final pulumi.Input<TransparentDataEncryptionState> state;
  /// The name of the transparent data encryption configuration.
  final pulumi.Input<String>? tdeName;

  /// Creates a new [TransparentDataEncryptionArgs].
  /// [databaseName] The name of the logical database for which the security alert policy is defined.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [state] Specifies the state of the transparent data encryption.
  /// [tdeName] The name of the transparent data encryption configuration.
  TransparentDataEncryptionArgs({
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    required pulumi.Output<TransparentDataEncryptionState> state,
    pulumi.Output<String>? tdeName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      state = pulumi.Input.asInput<TransparentDataEncryptionState>(state),
      tdeName = pulumi.Input.asOptionalInput<String>(tdeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'state': pulumi.Input.mapInputValue<TransparentDataEncryptionState, String>(state, (value) => value.value),
      'tdeName': ?tdeName,
    };
  }

  factory TransparentDataEncryptionArgs.fromMap(Map<String, dynamic> map) {
    return TransparentDataEncryptionArgs(
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      state: pulumi.Output.create<TransparentDataEncryptionState>(TransparentDataEncryptionState.fromValue(map['state'] as String)),
      tdeName: map['tdeName'] == null ? null : pulumi.Output.create<String>(map['tdeName'] as String),
    );
  }
}

