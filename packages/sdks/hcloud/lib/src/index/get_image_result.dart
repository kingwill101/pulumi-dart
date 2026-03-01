// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getImage.
class GetImageResult {
  /// (string) Architecture of the Image.
  final String architecture;
  /// (string) Date when the Image was created (in ISO-8601 format).
  final String created;
  /// (string) Point in time when the image is considered to be deprecated (in ISO-8601 format).
  final String deprecated;
  /// (string) Description of the Image.
  final String description;
  /// (int) Unique ID of the Image.
  final int id;
  final bool? includeDeprecated;
  final Map<String, String> labels;
  final bool? mostRecent;
  /// (string) Name of the Image, only present when the Image is of type `system`.
  final String name;
  /// (string) Flavor of operating system contained in the image, could be `ubuntu`, `centos`, `debian`, `fedora` or `unknown`.
  final String osFlavor;
  /// (string) Operating system version.
  final String osVersion;
  /// (bool) Indicates that rapid deploy of the image is available.
  final bool rapidDeploy;
  final String? selector;
  /// (string) Type of the Image, could be `system`, `backup` or `snapshot`.
  final String type;
  final String? withArchitecture;
  final String? withSelector;
  final List<String>? withStatuses;

  /// Creates a new [GetImageResult].
  /// [architecture] (string) Architecture of the Image.
  /// [created] (string) Date when the Image was created (in ISO-8601 format).
  /// [deprecated] (string) Point in time when the image is considered to be deprecated (in ISO-8601 format).
  /// [description] (string) Description of the Image.
  /// [id] (int) Unique ID of the Image.
  /// [includeDeprecated] Optional.
  /// [labels] Required.
  /// [mostRecent] Optional.
  /// [name] (string) Name of the Image, only present when the Image is of type `system`.
  /// [osFlavor] (string) Flavor of operating system contained in the image, could be `ubuntu`, `centos`, `debian`, `fedora` or `unknown`.
  /// [osVersion] (string) Operating system version.
  /// [rapidDeploy] (bool) Indicates that rapid deploy of the image is available.
  /// [selector] Optional.
  /// [type] (string) Type of the Image, could be `system`, `backup` or `snapshot`.
  /// [withArchitecture] Optional.
  /// [withSelector] Optional.
  /// [withStatuses] Optional.
  GetImageResult({
    required this.architecture,
    required this.created,
    required this.deprecated,
    required this.description,
    required this.id,
    this.includeDeprecated,
    required this.labels,
    this.mostRecent,
    required this.name,
    required this.osFlavor,
    required this.osVersion,
    required this.rapidDeploy,
    this.selector,
    required this.type,
    this.withArchitecture,
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'created': created,
      'deprecated': deprecated,
      'description': description,
      'id': id,
      'includeDeprecated': ?includeDeprecated,
      'labels': labels,
      'mostRecent': ?mostRecent,
      'name': name,
      'osFlavor': osFlavor,
      'osVersion': osVersion,
      'rapidDeploy': rapidDeploy,
      'selector': ?selector,
      'type': type,
      'withArchitecture': ?withArchitecture,
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      architecture: map['architecture'] as String,
      created: map['created'] as String,
      deprecated: map['deprecated'] as String,
      description: map['description'] as String,
      id: map['id'] as int,
      includeDeprecated: map['includeDeprecated'] == null ? null : map['includeDeprecated'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      name: map['name'] as String,
      osFlavor: map['osFlavor'] as String,
      osVersion: map['osVersion'] as String,
      rapidDeploy: map['rapidDeploy'] as bool,
      selector: map['selector'] == null ? null : map['selector'] as String,
      type: map['type'] as String,
      withArchitecture: map['withArchitecture'] == null ? null : map['withArchitecture'] as String,
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
      withStatuses: map['withStatuses'] == null ? null : (map['withStatuses'] as List).cast<String>(),
    );
  }
}

