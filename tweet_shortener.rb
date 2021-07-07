def dictionary
  {"hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(tweet)
  split = tweet.split(" ")
  for i in (0...split.length)
    split[i] = dictionary[split[i].downcase] if dictionary.key?(split[i].downcase)
  end
  split.join(" ")
end 

def bulk_tweet_shortener(tweets)
  for i in (0...tweets.length)
    puts word_substituter(tweets[i])
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  newtweet = word_substituter(tweet)
  newtweet.length > 140 ? "#{newtweet.slice(0...137)}..." : newtweet
end