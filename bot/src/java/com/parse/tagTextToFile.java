package com.parse;

import edu.stanford.nlp.io.EncodingPrintWriter;
import java.io.*;
import edu.stanford.nlp.tagger.maxent.MaxentTagger;
 
public class tagTextToFile {
 
 public String tags(String args) throws IOException,
 ClassNotFoundException {
 
 String tagged;
 
 // Initialize the tagger
 MaxentTagger tagger = new MaxentTagger("E:\\Web Backups\\stanford-postagger-2015-12-09\\models\\english-left3words-distsim.tagger");
 
 // The sample string
 String sample = "i can man the controls of this machine";
 
 //The tagged string
 tagged = tagger.tagString(args);
 
 //output the tagged sample string onto your console
return tagged;

}
    public static void main(String[] args) throws IOException, ClassNotFoundException {
        tagTextToFile tg = new tagTextToFile();
        System.out.println(tg.tags("Hello Jitendra! how are you"));
    }
}