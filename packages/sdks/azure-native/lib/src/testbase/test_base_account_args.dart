// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_assigned_service_identity.dart';
import 'test_base_account_sku.dart';

/// {@template pulumi_testbase_test_base_account_args_doc}
/// The set of arguments for TestBaseAccount.
/// {@endtemplate}
/// {@macro pulumi_testbase_test_base_account_args_doc}
class TestBaseAccountArgs {
  /// The identity of the testBaseAccount.
  final pulumi.Input<SystemAssignedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The flag indicating if we would like to restore the Test Base Accounts which were soft deleted before.
  final pulumi.Input<bool>? restore;
  /// The SKU of the Test Base Account.
  final pulumi.Input<TestBaseAccountSKU> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String>? testBaseAccountName;

  /// Creates a new [TestBaseAccountArgs].
  /// [identity] The identity of the testBaseAccount.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restore] The flag indicating if we would like to restore the Test Base Accounts which were soft deleted before.
  /// [sku] The SKU of the Test Base Account.
  /// [tags] Resource tags.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  TestBaseAccountArgs({
    pulumi.Output<SystemAssignedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? restore,
    required pulumi.Output<TestBaseAccountSKU> sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? testBaseAccountName,
  }) :
      identity = pulumi.Input.asOptionalInput<SystemAssignedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restore = pulumi.Input.asOptionalInput<bool>(restore),
      sku = pulumi.Input.asInput<TestBaseAccountSKU>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      testBaseAccountName = pulumi.Input.asOptionalInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<SystemAssignedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'restore': ?restore,
      'sku': pulumi.Input.mapInputValue<TestBaseAccountSKU, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'testBaseAccountName': ?testBaseAccountName,
    };
  }

  factory TestBaseAccountArgs.fromMap(Map<String, dynamic> map) {
    return TestBaseAccountArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<SystemAssignedServiceIdentity>(SystemAssignedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      restore: map['restore'] == null ? null : pulumi.Output.create<bool>(map['restore'] as bool),
      sku: pulumi.Output.create<TestBaseAccountSKU>(TestBaseAccountSKU.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      testBaseAccountName: map['testBaseAccountName'] == null ? null : pulumi.Output.create<String>(map['testBaseAccountName'] as String),
    );
  }
}

