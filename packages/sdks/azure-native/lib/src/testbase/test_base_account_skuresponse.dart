// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'test_base_account_skucapability_response.dart';

/// Describes a Test Base Account SKU.
class TestBaseAccountSKUResponse {
  /// The capabilities of a SKU.
  final pulumi.Input<List<TestBaseAccountSKUCapabilityResponse>> capabilities;
  /// The locations that the SKU is available.
  final pulumi.Input<List<String>>? locations;
  /// The name of the SKU. This is typically a letter + number code, such as B0 or S0.
  final pulumi.Input<String> name;
  /// The type of resource the SKU applies to.
  final pulumi.Input<String>? resourceType;
  /// The tier of this particular SKU.
  final pulumi.Input<String> tier;

  /// Creates a new [TestBaseAccountSKUResponse].
  /// [capabilities] The capabilities of a SKU.
  /// [locations] The locations that the SKU is available.
  /// [name] The name of the SKU. This is typically a letter + number code, such as B0 or S0.
  /// [resourceType] The type of resource the SKU applies to.
  /// [tier] The tier of this particular SKU.
  TestBaseAccountSKUResponse({
    required this.capabilities,
    this.locations,
    required this.name,
    this.resourceType,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': pulumi.Input.mapInputValue<List<TestBaseAccountSKUCapabilityResponse>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<TestBaseAccountSKUCapabilityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locations': ?locations,
      'name': name,
      'resourceType': ?resourceType,
      'tier': tier,
    };
  }

  factory TestBaseAccountSKUResponse.fromMap(Map<String, dynamic> map) {
    return TestBaseAccountSKUResponse(
      capabilities: (pulumi.Input.decodeList<TestBaseAccountSKUCapabilityResponse>(map['capabilities'], (value) => TestBaseAccountSKUCapabilityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      locations: map['locations'] == null ? null : ((map['locations']! as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

