// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_gallery_application_gallery_application_args_doc}
/// The set of arguments for GalleryApplication.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_application_gallery_application_args_doc}
class GalleryApplicationArgs {
  /// A description of the Gallery Application.
  final pulumi.Input<String>? description;
  /// The end of life date in RFC3339 format of the Gallery Application.
  final pulumi.Input<String>? endOfLifeDate;
  /// The End User Licence Agreement of the Gallery Application.
  final pulumi.Input<String>? eula;
  /// The ID of the Shared Image Gallery. Changing this forces a new resource to be created.
  final pulumi.Input<String> galleryId;
  /// The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Gallery Application. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The URI containing the Privacy Statement associated with the Gallery Application.
  final pulumi.Input<String>? privacyStatementUri;
  /// The URI containing the Release Notes associated with the Gallery Application.
  final pulumi.Input<String>? releaseNoteUri;
  /// The type of the Operating System supported for the Gallery Application. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created.
  final pulumi.Input<String> supportedOsType;
  /// A mapping of tags to assign to the Gallery Application.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GalleryApplicationArgs].
  /// [description] A description of the Gallery Application.
  /// [endOfLifeDate] The end of life date in RFC3339 format of the Gallery Application.
  /// [eula] The End User Licence Agreement of the Gallery Application.
  /// [galleryId] The ID of the Shared Image Gallery. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created.
  /// [name] The name of the Gallery Application. Changing this forces a new resource to be created.
  /// [privacyStatementUri] The URI containing the Privacy Statement associated with the Gallery Application.
  /// [releaseNoteUri] The URI containing the Release Notes associated with the Gallery Application.
  /// [supportedOsType] The type of the Operating System supported for the Gallery Application. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Gallery Application.
  GalleryApplicationArgs({
    this.description,
    this.endOfLifeDate,
    this.eula,
    required this.galleryId,
    this.location,
    this.name,
    this.privacyStatementUri,
    this.releaseNoteUri,
    required this.supportedOsType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endOfLifeDate': ?endOfLifeDate,
      'eula': ?eula,
      'galleryId': galleryId,
      'location': ?location,
      'name': ?name,
      'privacyStatementUri': ?privacyStatementUri,
      'releaseNoteUri': ?releaseNoteUri,
      'supportedOsType': supportedOsType,
      'tags': ?tags,
    };
  }

  factory GalleryApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      endOfLifeDate: map['endOfLifeDate'] == null ? null : (map['endOfLifeDate'] as String).input(),
      eula: map['eula'] == null ? null : (map['eula'] as String).input(),
      galleryId: (map['galleryId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      privacyStatementUri: map['privacyStatementUri'] == null ? null : (map['privacyStatementUri'] as String).input(),
      releaseNoteUri: map['releaseNoteUri'] == null ? null : (map['releaseNoteUri'] as String).input(),
      supportedOsType: (map['supportedOsType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

