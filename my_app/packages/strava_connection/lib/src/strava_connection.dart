import 'package:strava_client/strava_client.dart';
import 'package:strava_connection/src/secret.dart';

Future<StravaConnection?> fetchConnection() async {
  final client = StravaClient(secret: clientSecret, clientId: clientId);
  final authToken = await client.getStravaAuthToken();
  if (authToken != null) {
    return StravaConnection(response: authToken, client: client);
  }
  return null;
}

/// {@template strava_connection}
/// Provides the Strava data source and options for manipulating this data.
/// {@endtemplate}
class StravaConnection {
  StravaConnection({required this.client, required this.response});

  final TokenResponse response;
  final StravaClient client;

  Future<dynamic> readRuns() async {
    return client.activities.listLoggedInAthleteActivities(
      DateTime.now(),
      DateTime.now().subtract(const Duration(days: 30)),
      1,
      100,
    );
  }

  /// Fetches a Strava connection, requests login if neccessary.
}
