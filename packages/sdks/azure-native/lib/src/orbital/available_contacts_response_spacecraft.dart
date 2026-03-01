// ignore_for_file: unused_element, unnecessary_cast


/// The reference to the spacecraft resource.
class AvailableContactsResponseSpacecraft {
  /// Resource ID.
  final String id;

  /// Creates a new [AvailableContactsResponseSpacecraft].
  /// [id] Resource ID.
  AvailableContactsResponseSpacecraft({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AvailableContactsResponseSpacecraft.fromMap(Map<String, dynamic> map) {
    return AvailableContactsResponseSpacecraft(
      id: map['id'] as String,
    );
  }
}

