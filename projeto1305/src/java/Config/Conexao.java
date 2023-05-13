/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoDatabase;

/**
 *
 * @author vilar
 */
public class Conexao {

    private static MongoClient mongoClient;
    private static MongoDatabase database;

    public static void connect() {
        mongoClient = new MongoClient("localhost", 27017);
        database = mongoClient.getDatabase("bdExemplo");
    }

    public static void close() {
        if (mongoClient != null) {
            mongoClient.close();
        }
    }

    public static MongoDatabase getDatabase() {
        return database;
    }
}
