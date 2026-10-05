// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRoute.
class GetRouteResult {
  /// The create time of the resource.
  final String? createTime;
  /// Destination address for connection
  final String? destinationAddress;
  /// Destination port for connection
  final int? destinationPort;
  /// Display name.
  final String? displayName;
  /// Labels.
  final Map<String, String>? labels;
  /// The resource's name.
  final String? name;
  /// The update time of the resource.
  final String? updateTime;

  /// Creates a new [GetRouteResult].
  /// [createTime] The create time of the resource.
  /// [destinationAddress] Destination address for connection
  /// [destinationPort] Destination port for connection
  /// [displayName] Display name.
  /// [labels] Labels.
  /// [name] The resource's name.
  /// [updateTime] The update time of the resource.
  const GetRouteResult({
    this.createTime,
    this.destinationAddress,
    this.destinationPort,
    this.displayName,
    this.labels,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'destinationAddress': ?destinationAddress,
      'destinationPort': ?destinationPort,
      'displayName': ?displayName,
      'labels': ?labels,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory GetRouteResult.fromMap(Map<String, dynamic> map) {
    return GetRouteResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationAddress: (() { final guardedValue = map['destinationAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
