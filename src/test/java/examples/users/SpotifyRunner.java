package examples.users;

import com.intuit.karate.junit5.Karate;

public class SpotifyRunner {

    @Karate.Test
    Karate spotifyApi() {
        return Karate.run("spotify").relativeTo(getClass());
    }

    @Karate.Test
    Karate spotifyUI() {
        return Karate.run("spotifyui").relativeTo(getClass());
    }

}
