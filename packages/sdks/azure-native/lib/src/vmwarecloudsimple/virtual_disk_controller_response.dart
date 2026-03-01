// ignore_for_file: unused_element, unnecessary_cast


/// Virtual disk controller model
class VirtualDiskControllerResponse {
  /// Controller's id
  final String id;
  /// The display name of Controller
  final String name;
  /// dik controller subtype (VMWARE_PARAVIRTUAL, BUS_PARALLEL, LSI_PARALLEL, LSI_SAS)
  final String subType;
  /// disk controller type (SCSI)
  final String type;

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
      id: map['id'] as String,
      name: map['name'] as String,
      subType: map['subType'] as String,
      type: map['type'] as String,
    );
  }
}

