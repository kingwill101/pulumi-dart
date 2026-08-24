// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDnsRecordData {
  /// Algorithm.
  final pulumi.Input<double> algorithm;
  /// Altitude of location in meters.
  final pulumi.Input<double> altitude;
  /// Certificate.
  final pulumi.Input<String> certificate;
  /// Digest.
  final pulumi.Input<String> digest;
  /// Digest Type.
  final pulumi.Input<double> digestType;
  /// Fingerprint.
  final pulumi.Input<String> fingerprint;
  /// Flags for the CAA record.
  final pulumi.Input<dynamic> flags;
  /// Key Tag.
  final pulumi.Input<double> keyTag;
  /// Degrees of latitude.
  final pulumi.Input<double> latDegrees;
  /// Latitude direction.
  /// Available values: "N", "S".
  final pulumi.Input<String> latDirection;
  /// Minutes of latitude.
  final pulumi.Input<double> latMinutes;
  /// Seconds of latitude.
  final pulumi.Input<double> latSeconds;
  /// Degrees of longitude.
  final pulumi.Input<double> longDegrees;
  /// Longitude direction.
  /// Available values: "E", "W".
  final pulumi.Input<String> longDirection;
  /// Minutes of longitude.
  final pulumi.Input<double> longMinutes;
  /// Seconds of longitude.
  final pulumi.Input<double> longSeconds;
  /// Matching Type.
  final pulumi.Input<double> matchingType;
  /// Order.
  final pulumi.Input<double> order;
  /// The port of the service.
  final pulumi.Input<double> port;
  /// Horizontal precision of location.
  final pulumi.Input<double> precisionHorz;
  /// Vertical precision of location.
  final pulumi.Input<double> precisionVert;
  /// Preference.
  final pulumi.Input<double> preference;
  /// Required for MX and URI records; ignored for other record types (but may still be returned by the API). Records with lower priorities are preferred. This field is to be deprecated in favor of the priority field within the data map.
  final pulumi.Input<double> priority;
  /// Protocol.
  final pulumi.Input<double> protocol;
  /// Public Key.
  final pulumi.Input<String> publicKey;
  /// Regex.
  final pulumi.Input<String> regex;
  /// Replacement.
  final pulumi.Input<String> replacement;
  /// Selector.
  final pulumi.Input<double> selector;
  /// Service.
  final pulumi.Input<String> service;
  /// Size of location in meters.
  final pulumi.Input<double> size;
  /// Name of the property controlled by this record (e.g.: issue, issuewild, iodef).
  final pulumi.Input<String> tag;
  /// A valid mail server hostname, or "." for a NULL MX record.
  final pulumi.Input<String> target;
  /// Type.
  final pulumi.Input<double> type;
  /// Usage.
  final pulumi.Input<double> usage;
  /// Value of the record. This field's semantics depend on the chosen tag.
  final pulumi.Input<String> value;
  /// The record weight.
  final pulumi.Input<double> weight;

  /// Creates a new [GetDnsRecordData].
  /// [algorithm] Algorithm.
  /// [altitude] Altitude of location in meters.
  /// [certificate] Certificate.
  /// [digest] Digest.
  /// [digestType] Digest Type.
  /// [fingerprint] Fingerprint.
  /// [flags] Flags for the CAA record.
  /// [keyTag] Key Tag.
  /// [latDegrees] Degrees of latitude.
  /// [latDirection] Latitude direction.
  /// [latMinutes] Minutes of latitude.
  /// [latSeconds] Seconds of latitude.
  /// [longDegrees] Degrees of longitude.
  /// [longDirection] Longitude direction.
  /// [longMinutes] Minutes of longitude.
  /// [longSeconds] Seconds of longitude.
  /// [matchingType] Matching Type.
  /// [order] Order.
  /// [port] The port of the service.
  /// [precisionHorz] Horizontal precision of location.
  /// [precisionVert] Vertical precision of location.
  /// [preference] Preference.
  /// [priority] Required for MX and URI records; ignored for other record types (but may still be returned by the API). Records with lower priorities are preferred. This field is to be deprecated in favor of the priority field within the data map.
  /// [protocol] Protocol.
  /// [publicKey] Public Key.
  /// [regex] Regex.
  /// [replacement] Replacement.
  /// [selector] Selector.
  /// [service] Service.
  /// [size] Size of location in meters.
  /// [tag] Name of the property controlled by this record (e.g.: issue, issuewild, iodef).
  /// [target] A valid mail server hostname, or "." for a NULL MX record.
  /// [type] Type.
  /// [usage] Usage.
  /// [value] Value of the record. This field's semantics depend on the chosen tag.
  /// [weight] The record weight.
  const GetDnsRecordData({
    required this.algorithm,
    required this.altitude,
    required this.certificate,
    required this.digest,
    required this.digestType,
    required this.fingerprint,
    required this.flags,
    required this.keyTag,
    required this.latDegrees,
    required this.latDirection,
    required this.latMinutes,
    required this.latSeconds,
    required this.longDegrees,
    required this.longDirection,
    required this.longMinutes,
    required this.longSeconds,
    required this.matchingType,
    required this.order,
    required this.port,
    required this.precisionHorz,
    required this.precisionVert,
    required this.preference,
    required this.priority,
    required this.protocol,
    required this.publicKey,
    required this.regex,
    required this.replacement,
    required this.selector,
    required this.service,
    required this.size,
    required this.tag,
    required this.target,
    required this.type,
    required this.usage,
    required this.value,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'altitude': altitude,
      'certificate': certificate,
      'digest': digest,
      'digestType': digestType,
      'fingerprint': fingerprint,
      'flags': flags,
      'keyTag': keyTag,
      'latDegrees': latDegrees,
      'latDirection': latDirection,
      'latMinutes': latMinutes,
      'latSeconds': latSeconds,
      'longDegrees': longDegrees,
      'longDirection': longDirection,
      'longMinutes': longMinutes,
      'longSeconds': longSeconds,
      'matchingType': matchingType,
      'order': order,
      'port': port,
      'precisionHorz': precisionHorz,
      'precisionVert': precisionVert,
      'preference': preference,
      'priority': priority,
      'protocol': protocol,
      'publicKey': publicKey,
      'regex': regex,
      'replacement': replacement,
      'selector': selector,
      'service': service,
      'size': size,
      'tag': tag,
      'target': target,
      'type': type,
      'usage': usage,
      'value': value,
      'weight': weight,
    };
  }

  factory GetDnsRecordData.fromMap(Map<String, dynamic> map) {
    return GetDnsRecordData(
      algorithm: pulumi.Input.fromValue((map['algorithm'] as num).toDouble()),
      altitude: pulumi.Input.fromValue((map['altitude'] as num).toDouble()),
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      digest: pulumi.Input.fromValue(map['digest'] as String),
      digestType: pulumi.Input.fromValue((map['digestType'] as num).toDouble()),
      fingerprint: pulumi.Input.fromValue(map['fingerprint'] as String),
      flags: pulumi.Input.fromValue(map['flags']),
      keyTag: pulumi.Input.fromValue((map['keyTag'] as num).toDouble()),
      latDegrees: pulumi.Input.fromValue((map['latDegrees'] as num).toDouble()),
      latDirection: pulumi.Input.fromValue(map['latDirection'] as String),
      latMinutes: pulumi.Input.fromValue((map['latMinutes'] as num).toDouble()),
      latSeconds: pulumi.Input.fromValue((map['latSeconds'] as num).toDouble()),
      longDegrees: pulumi.Input.fromValue((map['longDegrees'] as num).toDouble()),
      longDirection: pulumi.Input.fromValue(map['longDirection'] as String),
      longMinutes: pulumi.Input.fromValue((map['longMinutes'] as num).toDouble()),
      longSeconds: pulumi.Input.fromValue((map['longSeconds'] as num).toDouble()),
      matchingType: pulumi.Input.fromValue((map['matchingType'] as num).toDouble()),
      order: pulumi.Input.fromValue((map['order'] as num).toDouble()),
      port: pulumi.Input.fromValue((map['port'] as num).toDouble()),
      precisionHorz: pulumi.Input.fromValue((map['precisionHorz'] as num).toDouble()),
      precisionVert: pulumi.Input.fromValue((map['precisionVert'] as num).toDouble()),
      preference: pulumi.Input.fromValue((map['preference'] as num).toDouble()),
      priority: pulumi.Input.fromValue((map['priority'] as num).toDouble()),
      protocol: pulumi.Input.fromValue((map['protocol'] as num).toDouble()),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
      regex: pulumi.Input.fromValue(map['regex'] as String),
      replacement: pulumi.Input.fromValue(map['replacement'] as String),
      selector: pulumi.Input.fromValue((map['selector'] as num).toDouble()),
      service: pulumi.Input.fromValue(map['service'] as String),
      size: pulumi.Input.fromValue((map['size'] as num).toDouble()),
      tag: pulumi.Input.fromValue(map['tag'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
      type: pulumi.Input.fromValue((map['type'] as num).toDouble()),
      usage: pulumi.Input.fromValue((map['usage'] as num).toDouble()),
      value: pulumi.Input.fromValue(map['value'] as String),
      weight: pulumi.Input.fromValue((map['weight'] as num).toDouble()),
    );
  }
}
