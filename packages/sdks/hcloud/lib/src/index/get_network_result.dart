// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetwork.
class GetNetworkResult {
  /// (bool) Whether delete protection is enabled.
  final bool deleteProtection;
  /// (bool) Indicates if the routes from this network should be exposed to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  final bool exposeRoutesToVswitch;
  /// Unique ID of the Network.
  final int id;
  /// IPv4 prefix of the Network.
  final String ipRange;
  final Map<String, String> labels;
  final bool? mostRecent;
  /// Name of the Network.
  final String name;
  final String? withSelector;

  /// Creates a new [GetNetworkResult].
  /// [deleteProtection] (bool) Whether delete protection is enabled.
  /// [exposeRoutesToVswitch] (bool) Indicates if the routes from this network should be exposed to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active.
  /// [id] Unique ID of the Network.
  /// [ipRange] IPv4 prefix of the Network.
  /// [labels] Required.
  /// [mostRecent] Optional.
  /// [name] Name of the Network.
  /// [withSelector] Optional.
  GetNetworkResult({
    required this.deleteProtection,
    required this.exposeRoutesToVswitch,
    required this.id,
    required this.ipRange,
    required this.labels,
    this.mostRecent,
    required this.name,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': deleteProtection,
      'exposeRoutesToVswitch': exposeRoutesToVswitch,
      'id': id,
      'ipRange': ipRange,
      'labels': labels,
      'mostRecent': ?mostRecent,
      'name': name,
      'withSelector': ?withSelector,
    };
  }

  factory GetNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult(
      deleteProtection: map['deleteProtection'] as bool,
      exposeRoutesToVswitch: map['exposeRoutesToVswitch'] as bool,
      id: map['id'] as int,
      ipRange: map['ipRange'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

