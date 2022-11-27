public console.println[in] {
	call $LS:console.print[$LS:convert.toStr[in] + "\n"];
};

public bool[in] {
	return $LS:convert.toBool[in];
};

public byte[in] {
	return $LS:convert.toByte[in];
};

public short[in] {
	return $LS:convert.toShort[in];
};

public int[in] {
	return $LS:convert.toInt[in];
};

public long[in] {
	return $LS:convert.toLong[in];
};

public float[in] {
	return $LS:convert.toFloat[in];
};

public double[in] {
	return $LS:convert.toDouble[in];
};

public str[in] {
	return $LS:convert.toStr[in];
};

public list[in] {
	return $LS:convert.toList[in];
};

public list.size[in] {
	return $LS:list.length[in];
};

public convert.toList[in] {
	return $LS:if[$LS:typeOf[in] == 8, in, $LS:list.new[in]];
};

public hasError[in] {
	return $LS:typeOf[in] == 8 && str[in] == error[];
};

public error[] {
	return "<ERROR>";
};

public valueOf[in] {
	return $LS:if[$LS:typeOf[in] == 7, "\"" + str[in] + "\"", str[in]];
};

public nameOfType[in] {
	return $LS:if[$LS:typeOf[in] == 3,
		   $LS:if[in == 0, "bool",
		   $LS:if[in == 1, "byte",
		   $LS:if[in == 2, "short",
		   $LS:if[in == 3, "int",
		   $LS:if[in == 4, "long",
		   $LS:if[in == 5, "float",
		   $LS:if[in == 6, "double",
		   $LS:if[in == 7, "str",
		   $LS:if[in == 8, "list",
		   "null"]]]]]]]]], "error"];
};

public nameOfTypeOf[in] {
	return nameOfType[$LS:typeOf[in]];
};

public convert[in, to] {
	return $LS:if[$LS:typeOf[to] == 0, bool[in],
		   $LS:if[$LS:typeOf[to] == 1, byte[in],
		   $LS:if[$LS:typeOf[to] == 2, short[in],
		   $LS:if[$LS:typeOf[to] == 3, int[in],
		   $LS:if[$LS:typeOf[to] == 4, long[in],
		   $LS:if[$LS:typeOf[to] == 5, float[in],
		   $LS:if[$LS:typeOf[to] == 6, double[in],
		   $LS:if[$LS:typeOf[to] == 7, str[in],
		   $LS:if[$LS:typeOf[to] == 8, list[in],
		   null]]]]]]]]];
};

public list.newl[in] {
	return $LS:list.newLength[in];
};
