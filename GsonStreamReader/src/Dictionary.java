
public class Dictionary {
	private ID _id;
	private String wordid;
	private String word;
	private String syn;
	private String def;
	private String posn;
	private String pos;
	private String submitter;
	private String doe;
	private String wordsize;
	private String hanja;
	private String frequency;
	
	@Override
	public String toString() {
		String out = "";
		out += "{_id:{";
		out += _id.toString();
		out += "},";
		out += "wordid:" + wordid + ",";
		out += "word:" + word + ",";
		out += "syn:" + wordid + ",";
		out += "def:" + def + ",";
		out += "posn:" + posn + ",";
		out += "pos:" + pos + ",";
		out += "submitter:" + submitter + ",";
		out += "doe:" + doe + ",";
		out += "wordsize:" + wordsize + ",";
		out += "hanja:" + hanja + ",";
		out += "frequency:" + frequency;
		out += "}";
		return out;
	}
}

/*
[
{
   "_id":{
      "$oid":"4e534f0049dc3b3d27a8b82c"
   },
   "wordid":7981,
   "word":"흘긋",
   "syn":"",
   "def":"asquint",
   "posn":1,
   "pos":1,
   "submitter":"engdic",
   "doe":"2006-01-16 00:52:46",
   "wordsize":6,
   "hanja":"",
   "frequency":""
}
]
*/