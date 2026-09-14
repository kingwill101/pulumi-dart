// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetwork.
class GetNetworkResult {
  /// (bool) Whether delete protection is enabled.
  final bool? deleteProtection;
  /// (bool) Indicates if the routes from this network should be exposed to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  final bool? exposeRoutesToVswitch;
  /// Unique ID of the Network.
  final int? id;
  /// IPv4 prefix of the Network.
  final String? ipRange;
  final Map<String, String>? labels;
  final bool? mostRecent;
  /// Name of the Network.
  final String? name;
  final String? withSelector;

  /// Creates a new [GetNetworkResult].
  /// [deleteProtection] (bool) Whether delete protection is enabled.
  /// [exposeRoutesToVswitch] (bool) Indicates if the routes from this network should be exposed to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  /// [id] Unique ID of the Network.
  /// [ipRange] IPv4 prefix of the Network.
  /// [labels] Optional.
  /// [mostRecent] Optional.
  /// [name] Name of the Network.
  /// [withSelector] Optional.
  const GetNetworkResult({
    this.deleteProtection,
    this.exposeRoutesToVswitch,
    this.id,
    this.ipRange,
    this.labels,
    this.mostRecent,
    this.name,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': ?deleteProtection,
      'exposeRoutesToVswitch': ?exposeRoutesToVswitch,
      'id': ?id,
      'ipRange': ?ipRange,
      'labels': ?labels,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'withSelector': ?withSelector,
    };
  }

  factory GetNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult(
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      exposeRoutesToVswitch: (() { final guardedValue = map['exposeRoutesToVswitch']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      ipRange: (() { final guardedValue = map['ipRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
