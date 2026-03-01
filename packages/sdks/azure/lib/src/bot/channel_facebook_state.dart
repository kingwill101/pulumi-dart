// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_facebook_page.dart';

/// Input properties used for looking up and filtering ChannelFacebook resources.
class ChannelFacebookState {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? botName;
  /// The Facebook Application ID for the Facebook Channel.
  final pulumi.Input<String>? facebookApplicationId;
  /// The Facebook Application Secret for the Facebook Channel.
  final pulumi.Input<String>? facebookApplicationSecret;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// One or more `page` blocks as defined below.
  final pulumi.Input<List<ChannelFacebookPage>>? pages;
  /// The name of the resource group where the Facebook Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ChannelFacebookState].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [facebookApplicationId] The Facebook Application ID for the Facebook Channel.
  /// [facebookApplicationSecret] The Facebook Application Secret for the Facebook Channel.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [pages] One or more `page` blocks as defined below.
  /// [resourceGroupName] The name of the resource group where the Facebook Channel should be created. Changing this forces a new resource to be created.
  ChannelFacebookState({
    pulumi.Output<String>? botName,
    pulumi.Output<String>? facebookApplicationId,
    pulumi.Output<String>? facebookApplicationSecret,
    pulumi.Output<String>? location,
    pulumi.Output<List<ChannelFacebookPage>>? pages,
    pulumi.Output<String>? resourceGroupName,
  }) :
      botName = pulumi.Input.asOptionalInput<String>(botName),
      facebookApplicationId = pulumi.Input.asOptionalInput<String>(facebookApplicationId),
      facebookApplicationSecret = pulumi.Input.asOptionalInput<String>(facebookApplicationSecret),
      location = pulumi.Input.asOptionalInput<String>(location),
      pages = pulumi.Input.asOptionalInput<List<ChannelFacebookPage>>(pages),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': ?botName,
      'facebookApplicationId': ?facebookApplicationId,
      'facebookApplicationSecret': ?facebookApplicationSecret,
      'location': ?location,
      'pages': ?pulumi.Input.mapOptionalInputValue<List<ChannelFacebookPage>, List<Map<String, dynamic>>>(pages, (value) => pulumi.Input.encodeList<ChannelFacebookPage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ChannelFacebookState.fromMap(Map<String, dynamic> map) {
    return ChannelFacebookState(
      botName: map['botName'] == null ? null : pulumi.Output.create<String>(map['botName'] as String),
      facebookApplicationId: map['facebookApplicationId'] == null ? null : pulumi.Output.create<String>(map['facebookApplicationId'] as String),
      facebookApplicationSecret: map['facebookApplicationSecret'] == null ? null : pulumi.Output.create<String>(map['facebookApplicationSecret'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      pages: map['pages'] == null ? null : pulumi.Output.create<List<ChannelFacebookPage>>(pulumi.Input.decodeList<ChannelFacebookPage>(map['pages'], (value) => ChannelFacebookPage.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

