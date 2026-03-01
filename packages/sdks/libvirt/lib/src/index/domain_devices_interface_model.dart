// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceModel {
  /// Sets the specific type of the network interface model.
  final String type;

  /// Creates a new [DomainDevicesInterfaceModel].
  /// [type] Sets the specific type of the network interface model.
  DomainDevicesInterfaceModel({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesInterfaceModel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceModel(
      type: map['type'] as String,
    );
  }
}

