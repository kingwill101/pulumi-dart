// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  /// Windows IoT Device Service OEM AAD domain
  final String? adminDomainName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Windows IoT Device Service ODM AAD domain
  final String? billingDomainName;
  /// The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.
  final String? etag;
  /// Fully qualified resource Id for the resource
  final String id;
  /// The Azure Region where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// Windows IoT Device Service notes.
  final String? notes;
  /// Windows IoT Device Service device allocation,
  final double? quantity;
  /// Windows IoT Device Service start date,
  final String startDate;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetServiceResult].
  /// [adminDomainName] Windows IoT Device Service OEM AAD domain
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingDomainName] Windows IoT Device Service ODM AAD domain
  /// [etag] The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.
  /// [id] Fully qualified resource Id for the resource
  /// [location] The Azure Region where the resource lives
  /// [name] The name of the resource
  /// [notes] Windows IoT Device Service notes.
  /// [quantity] Windows IoT Device Service device allocation,
  /// [startDate] Windows IoT Device Service start date,
  /// [tags] Resource tags.
  /// [type] The type of the resource.
  const GetServiceResult({
    this.adminDomainName,
    required this.azureApiVersion,
    this.billingDomainName,
    this.etag,
    required this.id,
    this.location,
    required this.name,
    this.notes,
    this.quantity,
    required this.startDate,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminDomainName': ?adminDomainName,
      'azureApiVersion': azureApiVersion,
      'billingDomainName': ?billingDomainName,
      'etag': ?etag,
      'id': id,
      'location': ?location,
      'name': name,
      'notes': ?notes,
      'quantity': ?quantity,
      'startDate': startDate,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      adminDomainName: (() { final guardedValue = map['adminDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      billingDomainName: (() { final guardedValue = map['billingDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quantity: (() { final guardedValue = map['quantity']; if (guardedValue == null) return null; return guardedValue as double; })(),
      startDate: map['startDate'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

