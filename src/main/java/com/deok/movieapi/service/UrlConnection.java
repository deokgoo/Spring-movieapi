package com.deok.movieapi.service;

import lombok.Setter;
import org.springframework.context.annotation.Configuration;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@Configuration
public class UrlConnection {
    private static final String baseUrl = "https://api.themoviedb.org/3";
    @Setter
    private String apiKey = "";
    BufferedReader br = null;

    public String requestUrl(String url, String method, String data){
        URL obj = null;
        StringBuilder res = new StringBuilder();
        try {
            String fullUrl = baseUrl + url + "?api_key="+apiKey+data;
            obj = new URL(fullUrl);
            HttpURLConnection con = (HttpURLConnection)obj.openConnection();
            con.setRequestMethod(method);
            br = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8")); String line;
            while((line = br.readLine()) != null) {
                res.append(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return res.toString();
    }
}
