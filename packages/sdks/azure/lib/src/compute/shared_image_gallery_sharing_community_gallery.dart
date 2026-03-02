// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SharedImageGallerySharingCommunityGallery {
  /// The End User Licence Agreement for the Shared Image Gallery. Changing this forces a new resource to be created.
  final pulumi.Input<String> eula;
  /// Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Prefix of the community public name for the Shared Image Gallery. Changing this forces a new resource to be created.
  final pulumi.Input<String> prefix;
  /// Email of the publisher for the Shared Image Gallery. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisherEmail;
  /// URI of the publisher for the Shared Image Gallery. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisherUri;

  /// Creates a new [SharedImageGallerySharingCommunityGallery].
  /// [eula] The End User Licence Agreement for the Shared Image Gallery. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created.
  /// [prefix] Prefix of the community public name for the Shared Image Gallery. Changing this forces a new resource to be created.
  /// [publisherEmail] Email of the publisher for the Shared Image Gallery. Changing this forces a new resource to be created.
  /// [publisherUri] URI of the publisher for the Shared Image Gallery. Changing this forces a new resource to be created.
  SharedImageGallerySharingCommunityGallery({
    required this.eula,
    this.name,
    required this.prefix,
    required this.publisherEmail,
    required this.publisherUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eula': eula,
      'name': ?name,
      'prefix': prefix,
      'publisherEmail': publisherEmail,
      'publisherUri': publisherUri,
    };
  }

  factory SharedImageGallerySharingCommunityGallery.fromMap(Map<String, dynamic> map) {
    return SharedImageGallerySharingCommunityGallery(
      eula: (map['eula'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      prefix: (map['prefix'] as String).input(),
      publisherEmail: (map['publisherEmail'] as String).input(),
      publisherUri: (map['publisherUri'] as String).input(),
    );
  }
}

