// ignore_for_file: unused_element, unnecessary_cast


class GetAccountSASResourceTypes {
  /// Should permission be granted to the container?
  final bool container;
  /// Should permission be granted only to a specific object?
  final bool object;
  /// Should permission be granted to the entire service?
  final bool service;

  /// Creates a new [GetAccountSASResourceTypes].
  /// [container] Should permission be granted to the container?
  /// [object] Should permission be granted only to a specific object?
  /// [service] Should permission be granted to the entire service?
  GetAccountSASResourceTypes({
    required this.container,
    required this.object,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'object': object,
      'service': service,
    };
  }

  factory GetAccountSASResourceTypes.fromMap(Map<String, dynamic> map) {
    return GetAccountSASResourceTypes(
      container: map['container'] as bool,
      object: map['object'] as bool,
      service: map['service'] as bool,
    );
  }
}

