# Write your code here.
def dictionary
    substitute_list = {
        "hello" => "hi",
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

def word_substituter(string)
    string.split(" ").collect do |word|
        if dictionary.keys.include?(word.downcase)
            word = dictionary[word.downcase]
        else
            word
    end
end.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each do |string|
        puts word_substituter(string)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else
        tweet
    end
end

def shortened_tweet_truncator(tweet)
    shortened_tweet = selective_tweet_shortener(tweet)
    if shortened_tweet.length > 140
        shortened_tweet[0..136] + "..."
    else
        shortened_tweet
    end

end