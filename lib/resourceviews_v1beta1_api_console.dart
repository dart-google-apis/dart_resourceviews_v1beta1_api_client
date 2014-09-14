library resourceviews_v1beta1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_resourceviews_v1beta1_api/src/console_client.dart';

import "package:google_resourceviews_v1beta1_api/resourceviews_v1beta1_api_client.dart";

/** The Resource View API allows users to create and manage logical sets of Google Compute Engine instances. */
@deprecated
class Resourceviews extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your data across Google Cloud Platform services */
  static const String CLOUD_PLATFORM_SCOPE = "https://www.googleapis.com/auth/cloud-platform";

  /** OAuth Scope2: View and manage your Google Compute Engine resources */
  static const String COMPUTE_SCOPE = "https://www.googleapis.com/auth/compute";

  /** OAuth Scope2: View your Google Compute Engine resources */
  static const String COMPUTE_READONLY_SCOPE = "https://www.googleapis.com/auth/compute.readonly";

  /** OAuth Scope2: View and manage your Google Cloud Platform management resources and deployment status information */
  static const String NDEV_CLOUDMAN_SCOPE = "https://www.googleapis.com/auth/ndev.cloudman";

  /** OAuth Scope2: View your Google Cloud Platform management resources and deployment status information */
  static const String NDEV_CLOUDMAN_READONLY_SCOPE = "https://www.googleapis.com/auth/ndev.cloudman.readonly";

  final oauth2.OAuth2Console auth;

  Resourceviews([oauth2.OAuth2Console this.auth]);
}
