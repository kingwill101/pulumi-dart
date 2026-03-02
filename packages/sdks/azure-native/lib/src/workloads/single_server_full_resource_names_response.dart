// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_resource_names_response.dart';

/// The resource name object where the specified values will be full resource names of the corresponding resources in a single server SAP system.
class SingleServerFullResourceNamesResponse {
  /// The pattern type to be used for resource naming.
  /// Expected value is 'FullResourceName'.
  final pulumi.Input<String> namingPatternType;
  /// The resource names object for virtual machine and related resources.
  final pulumi.Input<VirtualMachineResourceNamesResponse>? virtualMachine;

  /// Creates a new [SingleServerFullResourceNamesResponse].
  /// [namingPatternType] The pattern type to be used for resource naming.
  /// [virtualMachine] The resource names object for virtual machine and related resources.
  SingleServerFullResourceNamesResponse({
    required this.namingPatternType,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namingPatternType': namingPatternType,
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<VirtualMachineResourceNamesResponse, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
    };
  }

  factory SingleServerFullResourceNamesResponse.fromMap(Map<String, dynamic> map) {
    return SingleServerFullResourceNamesResponse(
      namingPatternType: (map['namingPatternType'] as String).input(),
      virtualMachine: map['virtualMachine'] == null ? null : (VirtualMachineResourceNamesResponse.fromMap((map['virtualMachine']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

