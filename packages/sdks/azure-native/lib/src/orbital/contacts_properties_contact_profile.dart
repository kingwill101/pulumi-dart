// ignore_for_file: unused_element, unnecessary_cast


/// The reference to the contact profile resource.
class ContactsPropertiesContactProfile {
  /// Resource ID.
  final String id;

  /// Creates a new [ContactsPropertiesContactProfile].
  /// [id] Resource ID.
  ContactsPropertiesContactProfile({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ContactsPropertiesContactProfile.fromMap(Map<String, dynamic> map) {
    return ContactsPropertiesContactProfile(
      id: map['id'] as String,
    );
  }
}

