function fn() { 
var env = karate.env; // get system property 'karate.env' karate.log('karate.env system property was:', env); 
if (!env) { 
env = 'dev'; 
} 

var config = { 
env: env, 
myVarName: 'hello karate', 
baseUrl: 'https://api.spotify.com/v1',
tokenID: 'BQBj1uRj_JEnF1pQvRzHOOkbsEI1H0zhJWSY6Mv1Jz6WXhwDpjW2mgIRHeBb3QSyxut81w3EHLiQ1lh9c9QBY2cMaFOgkSfGEbt4dIzABajCuH-B5C03jvwORmodrjiexBn71riPUdAiJxwGCzl8xfys7s6nQnpF0JELBHNO_p8Unn5Vr2wDZenHb68yBxrB5l2ZN5nZqh4ivEMw8IpoLxwfWnn_KqmVXmSLDl-oVbdxEY2esLjBxFL4Bst6Nj_1IItv-PeN55fNpMujnySB3evpxHBzWbKwMmVI0O9fQf89sEBv9paDMTTncWsgdQETkkGk53hXXzGw9SEJIIfG'
}

if (env == 'dev') { 
// customize 
// e.g. config.foo = 'bar'; 
} else if (env == 'e2e') { 
// customize 
} 
return config; 
}