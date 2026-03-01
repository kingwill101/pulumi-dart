// ignore_for_file: unused_element, unnecessary_cast


/// Service Connection State
class PrivateLinkServiceConnectionState {
  /// actions required
  final String? actionsRequired;
  /// description string
  final String? description;
  /// state status
  final String? status;

  /// Creates a new [PrivateLinkServiceConnectionState].
  /// [actionsRequired] actions required
  /// [description] description string
  /// [status] state status
  PrivateLinkServiceConnectionState({
    this.actionsRequired,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': ?actionsRequired,
      'description': ?description,
      'status': ?status,
    };
  }

  factory PrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionState(
      actionsRequired: map['actionsRequired'] == null ? null : map['actionsRequired'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

