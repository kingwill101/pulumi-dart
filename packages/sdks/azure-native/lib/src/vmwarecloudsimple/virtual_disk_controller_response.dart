// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Virtual disk controller model
class VirtualDiskControllerResponse {
  /// Controller's id
  final pulumi.Input<String> id;
  /// The display name of Controller
  final pulumi.Input<String> name;
  /// dik controller subtype (VMWARE_PARAVIRTUAL, BUS_PARALLEL, LSI_PARALLEL, LSI_SAS)
  final pulumi.Input<String> subType;
  /// disk controller type (SCSI)
  final pulumi.Input<String> type;

  /// Creates a new [VirtualDiskControllerResponse].
  /// [id] Controller's id
  /// [name] The display name of Controller
  /// [subType] dik controller subtype (VMWARE_PARAVIRTUAL, BUS_PARALLEL, LSI_PARALLEL, LSI_SAS)
  /// [type] disk controller type (SCSI)
  VirtualDiskControllerResponse({
    required this.id,
    required this.name,
    required this.subType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subType': subType,
      'type': type,
    };
  }

  factory VirtualDiskControllerResponse.fromMap(Map<String, dynamic> map) {
    return VirtualDiskControllerResponse(
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      subType: (map['subType'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

