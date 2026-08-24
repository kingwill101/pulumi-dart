// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordData {
  /// Algorithm.
  final pulumi.Input<double?>? algorithm;
  /// Altitude of location in meters.
  final pulumi.Input<double?>? altitude;
  /// Certificate.
  final pulumi.Input<String?>? certificate;
  /// Digest.
  final pulumi.Input<String?>? digest;
  /// Digest Type.
  final pulumi.Input<double?>? digestType;
  /// Fingerprint.
  final pulumi.Input<String?>? fingerprint;
  /// Flags for the CAA record.
  final pulumi.Input<dynamic>? flags;
  /// Key Tag.
  final pulumi.Input<double?>? keyTag;
  /// Degrees of latitude.
  final pulumi.Input<double?>? latDegrees;
  /// Latitude direction.
  /// Available values: "N", "S".
  final pulumi.Input<String?>? latDirection;
  /// Minutes of latitude.
  final pulumi.Input<double?>? latMinutes;
  /// Seconds of latitude.
  final pulumi.Input<double?>? latSeconds;
  /// Degrees of longitude.
  final pulumi.Input<double?>? longDegrees;
  /// Longitude direction.
  /// Available values: "E", "W".
  final pulumi.Input<String?>? longDirection;
  /// Minutes of longitude.
  final pulumi.Input<double?>? longMinutes;
  /// Seconds of longitude.
  final pulumi.Input<double?>? longSeconds;
  /// Matching Type.
  final pulumi.Input<double?>? matchingType;
  /// Order.
  final pulumi.Input<double?>? order;
  /// The port of the service.
  final pulumi.Input<double?>? port;
  /// Horizontal precision of location.
  final pulumi.Input<double?>? precisionHorz;
  /// Vertical precision of location.
  final pulumi.Input<double?>? precisionVert;
  /// Preference.
  final pulumi.Input<double?>? preference;
  /// Required for MX and URI records; ignored for other record types (but may still be returned by the API). Records with lower priorities are preferred. This field is to be deprecated in favor of the priority field within the data map.
  final pulumi.Input<double?>? priority;
  /// Protocol.
  final pulumi.Input<double?>? protocol;
  /// Public Key.
  final pulumi.Input<String?>? publicKey;
  /// Regex.
  final pulumi.Input<String?>? regex;
  /// Replacement.
  final pulumi.Input<String?>? replacement;
  /// Selector.
  final pulumi.Input<double?>? selector;
  /// Service.
  final pulumi.Input<String?>? service;
  /// Size of location in meters.
  final pulumi.Input<double?>? size;
  /// Name of the property controlled by this record (e.g.: issue, issuewild, iodef).
  final pulumi.Input<String?>? tag;
  /// A valid mail server hostname, or "." for a NULL MX record.
  final pulumi.Input<String?>? target;
  /// Type.
  final pulumi.Input<double?>? type;
  /// Usage.
  final pulumi.Input<double?>? usage;
  /// Value of the record. This field's semantics depend on the chosen tag.
  final pulumi.Input<String?>? value;
  /// The record weight.
  final pulumi.Input<double?>? weight;

  /// Creates a new [RecordData].
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
  const RecordData({
    this.algorithm,
    this.altitude,
    this.certificate,
    this.digest,
    this.digestType,
    this.fingerprint,
    this.flags,
    this.keyTag,
    this.latDegrees,
    this.latDirection,
    this.latMinutes,
    this.latSeconds,
    this.longDegrees,
    this.longDirection,
    this.longMinutes,
    this.longSeconds,
    this.matchingType,
    this.order,
    this.port,
    this.precisionHorz,
    this.precisionVert,
    this.preference,
    this.priority,
    this.protocol,
    this.publicKey,
    this.regex,
    this.replacement,
    this.selector,
    this.service,
    this.size,
    this.tag,
    this.target,
    this.type,
    this.usage,
    this.value,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'altitude': ?altitude,
      'certificate': ?certificate,
      'digest': ?digest,
      'digestType': ?digestType,
      'fingerprint': ?fingerprint,
      'flags': ?flags,
      'keyTag': ?keyTag,
      'latDegrees': ?latDegrees,
      'latDirection': ?latDirection,
      'latMinutes': ?latMinutes,
      'latSeconds': ?latSeconds,
      'longDegrees': ?longDegrees,
      'longDirection': ?longDirection,
      'longMinutes': ?longMinutes,
      'longSeconds': ?longSeconds,
      'matchingType': ?matchingType,
      'order': ?order,
      'port': ?port,
      'precisionHorz': ?precisionHorz,
      'precisionVert': ?precisionVert,
      'preference': ?preference,
      'priority': ?priority,
      'protocol': ?protocol,
      'publicKey': ?publicKey,
      'regex': ?regex,
      'replacement': ?replacement,
      'selector': ?selector,
      'service': ?service,
      'size': ?size,
      'tag': ?tag,
      'target': ?target,
      'type': ?type,
      'usage': ?usage,
      'value': ?value,
      'weight': ?weight,
    };
  }

  factory RecordData.fromMap(Map<String, dynamic> map) {
    return RecordData(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      altitude: (() { final guardedValue = map['altitude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      digestType: (() { final guardedValue = map['digestType']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flags: (() { final guardedValue = map['flags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      keyTag: (() { final guardedValue = map['keyTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      latDegrees: (() { final guardedValue = map['latDegrees']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      latDirection: (() { final guardedValue = map['latDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latMinutes: (() { final guardedValue = map['latMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      latSeconds: (() { final guardedValue = map['latSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      longDegrees: (() { final guardedValue = map['longDegrees']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      longDirection: (() { final guardedValue = map['longDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longMinutes: (() { final guardedValue = map['longMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      longSeconds: (() { final guardedValue = map['longSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      matchingType: (() { final guardedValue = map['matchingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      precisionHorz: (() { final guardedValue = map['precisionHorz']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      precisionVert: (() { final guardedValue = map['precisionVert']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      preference: (() { final guardedValue = map['preference']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replacement: (() { final guardedValue = map['replacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      usage: (() { final guardedValue = map['usage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
